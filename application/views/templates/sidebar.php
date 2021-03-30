<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('/admin') ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('/PengajuanCimanggis') ?>">
            <i class="fas fa-tasks"></i>
            <span>Pengajuan Project Cimanggis</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('/PengajuanTapos') ?>">
            <i class="fas fa-file-alt"></i>
            <span>Pengajuan Project Tapos</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('/AdminMaintenance') ?>">
            <i class="fas fa-tools"></i>
            <span>Pengajuan Perbaikan</span></a>
    </li>

     <hr class="sidebar-divider d-none d-md-block">
    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('/pegawai') ?>">
            <i class="fas fa-users"></i>
            <span>Daftar Pegawai</span></a>
    </li>
     <li class="nav-item">
        <a class="nav-link" href="<?= base_url('/departemen') ?>">
            <i class="far fa-building"></i>
            <span>Daftar Departemen</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>
<!-- End of Sidebar -->
<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
    <div class="container-fluid">
    
    