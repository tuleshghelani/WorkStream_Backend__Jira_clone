{pkgs}: {
  channel = "stable-23.11";
  packages = [
    pkgs.nodejs_20
  ];
  # idx.extensions = [
  #   "angular.ng-template"
  # ];
    idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "angular.ng-template"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        npm-install = "npm ci --no-audit --prefer-offline --no-progress --timing";
        # Open editors for the following files by default, if they exist:
        # default.openFiles = [ "src/app/app.component.ts" ];
      };
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };
    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["npm" "run" "start" "--" "--port" "$PORT" "--host" "0.0.0.0" "--disable-host-check"];
          manager = "web";
        };
      };
    };
    #   previews = {
    #   previews = {
    #     web = {
    #       command = [
    #         "npm"
    #         "run"
    #         "start"
    #         "--"
    #         "--port"
    #         "$PORT"
    #         "--host"
    #         "0.0.0.0"
    #         "--disable-host-check"
    #       ];
    #       manager = "web";
    #     };
    #   };
    # };
  };
}