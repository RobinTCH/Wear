const initScan = () => {
  ScanditSDK.configure("AXvATAT+JLaLOMv7eiiBFShF6KLnGGdxhlu2j04sshnCDkf93i/zTMtZOgy1VvGgSW8gq/t3V4YCeS4O/2W9ko18oRlQUdfPfWv0PwNbGQgkFiTFPwJ/dSU31adFINWyY3KSCArl+mhl1iQXIBOgi275MXo+Wm7M8pBkEjqzsqhm4ikjr45kx/y6YC35dcbqYXt6psV+04vwe3sdOgXpDGnCkqonAUNEV05MFnEJGSvufndIitaX/tlxFjYxPaIdgnunowpam6K7AcI9nmVTAhWSGxzGHXoXY2b3Kvqpr/g/B6BdKDApxQZQYvxmM8DCAZlK1ZYpGYK8SRq8eWAxCS5aj8UTP4X+AKHOqoQxbQLDpLXmvaF9gCMqmAr+hwLdeblteOT1LMR56+SSYFI7GJw3M53w6XQaL8KQ8i6rcoh4uPwnwqXk712mVDMeIjgir8FzEd4aR2eOXlXpPU6l9+l5CondSXikYzP3q8NUs8mE77ktncHANWRv+Tg70UBq/AN0VzLZ0oSxKxssRWkSVa3iksuy9o4yTfwPCNTagrSn3dD/XRYdgnuPzeKcP+JKe1rRmig5KeK9c//JsFhkXmg76MDFz3a8Pk5zEP+F8RPaqdFiUYGbIB1MJW3KpyJAuNyPKZVfivR+xvwHo+9eI2LDSH7KC6MdzWuZGwt90GsleaAD83wNT8haTZq8OlKIyOjL0dG0M6lND/102DZBNUmaODMiEofThinzpiDTFoNgbn8A2TkBCwVP/Un3hACQtiQU0iDSz5bhC/jbd22biQVP0lVoMrL5SHw4OyjCXg==", {
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
