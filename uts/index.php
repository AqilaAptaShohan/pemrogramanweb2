<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #C2C3F5;
        color: #333;
    }

    h1.title-halaman {
        text-align: center;
        margin-top: 20px;
        color: #444;
    }

    h4.pilih-menu {
        text-align: center;
        font-size: 18px;
        margin-top: 20px;
    }

    .card {
        display: flex;
        justify-content: center;
        gap: 20px;
        margin: 30px auto;
        flex-wrap: wrap;
        max-width: 1200px;
    }

    /* Left and right logos */
    .logo-left, .logo-right {
        width: 90px;
        height: auto;
        flex-shrink: 0;
     }      

    .sub-card {
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        padding: 20px;
        text-align: center;
        width: 300px;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .sub-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
    }

    .card-title {
        font-size: 20px;
        margin-bottom: 15px;
        color: #555;
    }

    .button {
        display: inline-block;
        text-decoration: none;
        background-color: #FFA6C9;
        color: #fff;
        padding: 10px 15px;
        border-radius: 5px;
        font-size: 14px;
        margin: 5px 0;
        transition: background-color 0.3s;
    }

    .button:hover {
        background-color: #FFB8F3;
    }

    .button-add {
        margin-top: 10px;
    }

    .header-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        margin-bottom: 30px;
        background-color: #FFF8E8;
        border-bottom: 1px solid #ddd;
    }

</style>


<!-- Header container: left logo, title, right logo -->
<div class="header-container">
    <img src="foto1.png" alt="Logo Kiri" class="logo-left" />
    <h1 class="title-halaman">Selamat Datang di Puskesmas</h1>
    <img src="foto2.png" alt="Logo Kanan" class="logo-right" />
</div>

<?php
    if (isset($_GET['hal']) && !empty($_GET['hal'])) {
        $hal = $_GET['hal'];
        if ($hal == 'data-pasien') {
            require_once 'data_pasien.php';
        }elseif ($hal == 'tambah-pasien') {
            require_once 'form_pasien.php';
        }elseif ($hal == 'data-paramedik') {
            require_once 'paramedik.php';
        }elseif ($hal == 'data-periksa') {
            require_once 'periksaan_pasien.php';
        }elseif ($hal == 'data-kelurahan') {
            require_once 'klurahan.php';
        }elseif ($hal == 'data-unit-kerja') {
            require_once 'unit_kerja.php';
        }else {
            echo "Halaman tidak ditemukan";
        }

        echo '<br><br><a href="index.php" class="button button-add">Kembali ke Halaman Utama</a>';
    }else { ?>
        <h4 class="pilih-menu">Pilih Menu</>
        <div class="card">
            <div class="sub-card">
                <h3 class="card-title">Data Pasien</h3>
                <a href="index.php?hal=data-pasien" class="button button-add">Lihat Data</a>
                <a href="index.php?hal=tambah-pasien" class="button button-add">Tambah Data</a>
            </div>
            <div class="sub-card">
                <h3 class="card-title">Data Paramedik</h3>
                <a href="index.php?hal=data-paramedik" class="button button-add">Lihat Data</a>
                <a href="index.php?hal=tambah-paramedik" class="button button-add">Tambah Data</a>
            </div>
            <div class="sub-card">
                <h3 class="card-title">Data Pemeriksaan Pasien</h3>
                <a href="index.php?hal=data-periksa" class="button button-add">Lihat Data</a>
            </div>
            <div class="sub-card">
                <h3 class="card-title">Data Kelurahan</h3>
                <a href="index.php?hal=data-kelurahan" class="button button-add">Lihat Data</a>
            </div>
            <div class="sub-card">
                <h3 class="card-title">Data Unit Kerja</h3>
                <a href="index.php?hal=data-unit-kerja" class="button button-add">Lihat Data</a>
            </div>
        </div>
    <?php } ?>