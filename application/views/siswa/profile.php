<div class="main-content">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <!-- MAP DATA-->
            <div class="map-data m-b-40">
                <h3 class="title-3 m-b-30">Profile</h3>
                <div class="mx-auto d-block">
                    <img class="rounded-circle " src="<?=base_url('assets/images/icon/user.png') ?>" alt="Card image cap">
                    <div class="row form-group">
                        <div class="col col-md-2">
                            <label for="file-input" class=" form-control-label">Upload Image</label>
                        </div>
                        <div class="col-12 col-md-4">
                            <input type="file" id="file-input" name="file-input" class="form-control-file">
                        </div>
                    </div>
                </div>
                <div class="filters">
                   
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label class=" form-control-label">Username</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <p class="form-control-static"><?=
                            $this->session->userdata('username');
                            ?></p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">NIS</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" value="<?= $profile[0]->nis?>" name="text-input" placeholder="Nama" class="form-control">
                            
                        </div>
                    </div><div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">Nama</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" value="<?= $profile[0]->nama?>" name="text-input" placeholder="Nama" class="form-control">
                            
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label class=" form-control-label">Jenis Kelamin</label>
                        </div>
                        <div class="col col-md-9">
                            <div class="form-check">
                                <div class="radio">
                                    <label for="radio1" class="form-check-label ">
                                        <input type="radio" id="radio1" name="gender" value="Laki-laki" class="form-check-input">Laki-Laki
                                    </label>
                                </div>
                                <div class="radio">
                                    <label for="radio2" class="form-check-label ">
                                        <input type="radio" id="radio2" name="gender" value="Perempuan" class="form-check-input">Perempuan
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">Tempat Lahir</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" value="<?= $profile[0]->tempat_lahir?>" placeholder="Tempat Lahir" class="form-control">
                            
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">Tgl Lahir</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" value="<?= $profile[0]->tgl_lahir?>" placeholder="Tgl Lahir" class="form-control">
                            
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">alamat</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" value="<?= $profile[0]->alamat?>" placeholder="alamat" class="form-control">
                            
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">agama</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" value="<?= $profile[0]->agama?>" placeholder="alamat" class="form-control">
                            
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-3">
                            <label for="text-input" class=" form-control-label">Tahun Masuk</label>
                        </div>
                        <div class="col-12 col-md-9">
                            <input type="text" id="text-input" name="text-input" value="<?= $profile[0]->tahun_masuk?>" placeholder="alamat" class="form-control">
                            
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAP DATA-->
        </div>
    </div>
</div>