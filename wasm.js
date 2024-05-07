
(function () {
    //wait for loading
    setTimeout(function () {
        wasmMod().then (m => {
            let i;

            for (i = 0; i<5;i++){
                setTimeout(function () {
                    m.ccall("test");
                }, (i+1)*1000);
            }
        });
    }, 1000);
})();
