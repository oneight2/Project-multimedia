<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-lg mb-4">
  <a class="navbar-brand" href="#">
     <img src="<?= base_url() ?>assets/img/logo.png" width="60"  alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item <?= $this->uri->segment(1) === NULL? 'active':''  ?>">
        <a class="nav-link " href="<?= base_url() ?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item <?= $this->uri->segment(1) === 'home'? 'active':''  ?>">
        <a class="nav-link" href="<?= base_url('home/project') ?>">Pengajuan Project</a>
      </li>
      <li class="nav-item  <?= $this->uri->segment(1) === 'maintenance'? 'active':''  ?>">
        <a class="nav-link" href="<?= base_url('maintenance') ?>">Pengajuan Perbaikan</a>
      </li>
      <li class="nav-item login">
        <a class="nav-link" href="<?= base_url('login') ?>">Login</a>
      </li>
    </ul>
  </div>
</nav>

<style>
  .nav-item.login{
    background-color: #4e73df;
    color: white !important;
    border-radius: 10px;

  }
  .nav-item.active{
    font-weight: bold;
    color: #4e73df !important;
  }
  .navbar-light .navbar-nav .login .nav-link {
    text-align: center;
    color: white !important;
    padding: auto;
  }
</style>