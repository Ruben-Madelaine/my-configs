from powerline_shell.themes.default import DefaultColor
# https://jonasjacek.github.io/colors/

class Color(DefaultColor):
    USERNAME_FG = 15 #OK ruben
    USERNAME_BG = 16 #OK
    USERNAME_ROOT_BG = 1 #OFF

    HOSTNAME_FG = 15  #OFF
    HOSTNAME_BG = 18  #OFF

    HOME_SPECIAL_DISPLAY = True #OK
    PATH_FG = 15 
    PATH_BG = 240 #OK gris
    CWD_FG = 15
    SEPARATOR_FG = PATH_BG + 1 #OK

    READONLY_BG = 10 #OFF
    READONLY_FG = 15

    REPO_CLEAN_FG = 15
    REPO_CLEAN_BG = 22
    REPO_DIRTY_FG = 15
    REPO_DIRTY_BG = 1 # 88 124 160

    JOBS_FG = 10
    JOBS_BG = 15

    CMD_PASSED_FG = 15 #OK
    CMD_PASSED_BG = 28
    CMD_FAILED_FG = 15 #OK "$" sign
    CMD_FAILED_BG = 160

    SVN_CHANGES_FG = 10
    SVN_CHANGES_BG = 15

    VIRTUAL_ENV_BG = 0
    VIRTUAL_ENV_FG = 10

    AWS_PROFILE_FG = 10
    AWS_PROFILE_BG = 88

    TIME_FG = 10
    TIME_BG = 88