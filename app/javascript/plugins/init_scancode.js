const initScan = () => {
  ScanditSDK.configure("AWNAtD7+Hh7vDk+sSRCSzFMvA5UvJB+H1V/FlXcWG0D5BCyhVDfJ+1hJqWF0CMld6UIF/pRXpExZQja76mrQOehxAKYuY4H+6wPg64VXOZ5ZVzV7Yy+pyVwXJRd7LwuJWwbL2qMlE1deAnaFJz4UlfdzPwnJEqEZVhabWREuRNbYehqYrvU1aVtOhxSGtYiQGG0raG3nk9FLAb/OacCuh+BV3YGUlybd9hrY714fBBwV+3noqigwsB+c6nwmDA2hnuAthiNojKXNtm1ylfvHitqHcuvnGGXzHeg+nF2SfYud+mp27Wt15XMSrBHkenDM85A5m2iqOHMGLF8LAFixJ/WEItGFnwSvHbaJ7qaMOJBhduP2NVHvJWr6Fm30GtxQ9Hcd7TBERl0wq0tF1VEpzpr9GWSgMdVJgg+lx/MDZSq+gSgXKC/406Z97KReXw9xuXrwxwl07fuUcWqt/ct2ZShd1qFoIYHdswAVWEDi3KXErHyZ7xgcqSIgqJLQQiyUAGFQKbPQbmaYqTEi32+1Hsda0iLO178djtx7Yn+Gw6OGATn0F8tzmjh3m7c+LmVPPDnUTJTV2HxgqK9vfHiKv19FYWvRUYX0WFhWykl93BsmKfsjMPAEFZGU2PsIM1dwHLhk4qFlJzAn+oiA3f0RFeUSSQ6/obcf6aCvDo2y4aLMujH0IqVVlyBjttYIeoqndUKxXohNm2ioq0JQDakkyLllyzx/ZE+m1H1XYZnVGq8Jpn1L6SAWmETlEtDt5wh3b+pb2egvMM+UKf5O5m3vw4vLYB2UK9PHxkAKItX+DCVYPVkWRiRPR4Y=", {
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
