resource "google_compute_instance" "default" {
    name = "test"
    machine_type = "n1-standard-1"
    zone = "us-central1-a"
    tags = ["foo", "bar"]
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
      }
    }
    scratch_disk {
      interface = "SCSI"
    }
    network_interface {
      network = "default"
      access_config {
        // Ephemeral IP
      }
    }
metadata = {
  foo = "bar"
}
metadata_startup_script = "echo hi > /test.txt"
service_account {
  scopes = ["userinfo-email", "comput-ro" , "storage-ro"]
}
}