const initScan = () => {
  ScanditSDK.configure("ARUgSCj+CAB7N/tpigkRhhsd22dFN7WNvmtOqoAV/GU+Brt8OT+UpIJ0A3vlGFYVzXrJIiZJebipdVNbNA7oKeBNG+9Jf2S4xGxnKOpnVA1EbijDxRrVYFpA6sCYGrlf/DR8bjed97/5/SNM+PwERckNp6i0MWUGkNkR1GMRcxpGtpT/56gi3DA/Ul2U/HUTpHJO7y1z0DR9fyPy9jBlnx0/paL1qZ3z2hBuYjRvszcm1UF4OD/aT2oAtU3E5lNi4CWMh1QGwYmcxlURn2ds4ZnA60owv6vYFHHsS7U+Wxlaq04ofwLZeMju7IEZZdNeZtHCXUJTOo++5bUXT5ZTpFiQ4pa37CUfuX0ipx8A4jshsnVIjrKsXQYyrO3lXu8pEKztf5VZsw76i9265a/wfzMNY7DY24JyXBf16k7n/kAGLVQLo2zFtY5fHvjfUSiuOf6/jMtF+RZM8LMPX65CbWgnzTr/W0lomXw3aXU3zuTwUXDEW6LLHTRASRI7G2Qt9G0YbvBWkveVEMuEQBCcCce2/RRw0wdvsF8YVrnO9cVrKf06HByZchUGAzd3HShi6jQYByLwL6t5uk4JKkKg30E0p6E8qZdQXu/zLsFmb82Sa3ELuBiDCVz51lN/xNwRMCHiPXWzOzt1SUk6hP4yy5aoXSPhjwT1opgbEPBFLPyQAbeWOYjvQPTxd4WMJY0FcoxKYqnmWMkPL7G4MnSv79gMe4u0c3j1aN2MOfgpA8YTUq30Eh+hIL36yvtb1xYhom/3Qc+41KOU+XYBecR+W+NBkA/B+2BrstlytwbpT0kidV0W", {
    engineLocation: "https://cdn.jsdelivr.net/npm/scandit-sdk@5.x/build/",
  })
    .then(() => {
      return ScanditSDK.BarcodePicker.create(document.getElementById("scandit-barcode-picker"), {
        // enable some common symbologies
        scanSettings: new ScanditSDK.ScanSettings({ enabledSymbologies: ["ean8", "ean13", "upca", "upce"] }),
      });
    })
    .then((barcodePicker) => {
      // barcodePicker is ready here, show a message every time a barcode is scanned
      barcodePicker.on("scan", (scanResult) => {
        // alert(scanResult.barcodes[0].data);
        const myInput = document.getElementById("scan_barcode");
        const myForm = document.querySelector(".simple_form");
        myInput.value = scanResult.barcodes[0].data;
        myForm.submit();
      });
    });
}

export {initScan};
