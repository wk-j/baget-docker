

Task("Pack").Does(() => {
    DotNetCorePack("src/MyLib", new DotNetCorePackSettings {
        OutputDirectory = ".output"
    });
});

var target = Argument("target", "Pack");
RunTarget(target);