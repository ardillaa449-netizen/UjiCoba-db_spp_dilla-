<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>SPP ONLINE</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:linear-gradient(135deg,#ffd6e7,#ffc2d1,#ffb6c1);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    width:100%;
    display:flex;
    justify-content:center;
    align-items:center;
}

.card{
    width:400px;
    background:#fff;
    padding:35px;
    border-radius:20px;
    box-shadow:0 15px 35px rgba(0,0,0,.2);
    text-align:center;
}

.card h1{
    color:#673de6;
    margin-bottom:10px;
    font-size:32px;
}

.card h2{
    color:#444;
    margin-bottom:20px;
    font-size:22px;
}

.profile{
    width:150px;
    height:150px;
    border-radius:50%;
    object-fit:cover;
    margin:20px auto;
    display:block;
    border:5px solid #f3f3f3;
}

form{
    display:flex;
    flex-direction:column;
    gap:15px;
}

input{
    width:100%;
    padding:14px;
    border:1px solid #ddd;
    border-radius:10px;
    font-size:16px;
    outline:none;
    transition:.3s;
}

input:focus{
    border-color:#673de6;
    box-shadow:0 0 8px rgba(103,61,230,.3);
}

button{
    width:100%;
    padding:14px;
    background:#673de6;
    color:#fff;
    border:none;
    border-radius:10px;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

button:hover{
    background:#4e2cb8;
}

.alert{
    background:#ffe0e0;
    color:#c62828;
    padding:12px;
    border-radius:10px;
    margin-bottom:15px;
}

/* Styling untuk Link Cek Pembayaran */
.btn-cek-pembayaran{
    display:inline-block;
    margin-top:20px;
    color:#673de6;
    text-decoration:none;
    font-weight:600;
    font-size:14px;
    transition:.3s;
}

.btn-cek-pembayaran:hover{
    color:#4e2cb8;
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

    <div class="card">

        <h1>SPP ONLINE</h1>

        <img src="src/profile_spp.jpg" class="profile">

        <h2>LOGIN</h2>

        <?php
        if(isset($_GET['pesan'])){
            if($_GET['pesan']=="gagal"){
                echo "<div class='alert'>Username atau Password salah!</div>";
            }
        }
        ?>

        <form action="login_validasi.php" method="post">

            <input type="text" name="username" placeholder="👤 Username" required>

            <input type="password" name="password" placeholder="🔒 Password" required>

            <button type="submit" name="login">LOGIN</button>

        </form>

        <!-- Tambahan Link Cek Pembayaran dari Gambar -->
        <table style="width:100%; margin-top:10px;">
            <tr>
                <td align="center">
                    <a href="bayar.php" class="btn-cek-pembayaran">CEK PEMBAYARAN</a>
                </td>
            </tr>
        </table>

    </div>

</div>

</body>
</html>