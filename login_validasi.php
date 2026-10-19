<?php
session_start();
include 'src/koneksi.php';

// Ambil input dari form dan bersihkan spasi
$username = trim($_POST['username'] ?? '');
$password = trim($_POST['password'] ?? '');

if (!empty($username) && !empty($password)) {
    // 1. Gunakan Prepared Statement untuk mencegah SQL Injection (?)
    $stmt = mysqli_prepare($koneksi, "SELECT id_petugas, username, password, level FROM petugas WHERE username = ?");
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        // 2. Verifikasi password (mendukung password_hash() modern maupun MD5 lama)
        if (password_verify($password, $row['password']) || md5($password) === $row['password']) {
            
            // Regenerasi ID sesi untuk mencegah Session Fixation Attack
            session_regenerate_id(true);

            $_SESSION['username']   = $row['username'];
            $_SESSION['level']      = $row['level'];
            $_SESSION['id_petugas'] = $row['id_petugas'];

            if ($row['level'] == "admin") {
                echo "<script>
                        alert('Anda berhasil Login Admin!');
                        window.location='admin/halaman_admin.php';
                      </script>";
                exit();
            } elseif ($row['level'] == "petugas") {
                echo "<script>
                        alert('Anda berhasil Login Petugas!');
                        window.location='petugas/halaman_petugas.php';
                      </script>";
                exit();
            }
        }
    }
}

// Jika gagal
header("Location: index.php?pesan=gagal");
exit();
?>