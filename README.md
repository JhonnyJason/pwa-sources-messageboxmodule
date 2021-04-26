[![hackmd-github-sync-badge](https://hackmd.io/sHf9p8mPS_yEh35_NxHeaw/badge)](https://hackmd.io/sHf9p8mPS_yEh35_NxHeaw)
###### tags: `strunfun`

# [pwa-sources-messageboxmodule](https://github.com/JhonnyJason/pwa-sources-messageboxmodule) - messageboxmodule

## Description
Component to provide user-feedback by short lived messages.

## Expectation to the Environment
- messagebox element in DOM like this:
    ```pug
    #messagebox.gone
    ```

## Structure
- `stayDurationMS#`
- `currentTimeoutId#`
- `messagebox°`
- `letDisappear§`
- `disappear§`
- `.initialize§`
- `.info§`
- `.error§`

## Specification
- `stayDurationMS#` = per default 5000
- `currentTimeoutId#` = here we see when there is a timeout running and have the handle to clear it
- `messagebox°` = JS Object for the DOM element of the messagebox
- `letDisappear§` = starts/resets timeout to call `§disappear`
- `disappear§` = deletes messagebox content, sets class `gone` and sets invalid `currenttimeoutId`
- `.initialize§` = checks for `messageboxStayDurationMS` to apply it
- `.info§ message"` = sets message as content for the messagebox, removes all classNames and calls `§letDisappear`
- `.error§ message"` = sets message as content for the messagebox, sets className of `error` and calls `§letDisappear`
