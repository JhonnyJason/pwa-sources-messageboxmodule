############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("messageboxmodule")
#endregion

############################################################
stayDurationMS = 5000
currentTimeoutId = null

export initialize = ->
    log "messageboxmodule.initialize"
    c = allModules.configmodule
    if c.messageboxStayDurationMS? then stayDurationMS = c.messageboxStayDurationMS
    return

############################################################
letDisappear = ->
    log "letDisappear"
    if currentTimeoutId? then clearTimeout(currentTimeoutId)
    currentTimeoutId = setTimeout(disappear, stayDurationMS)
    return

disappear = ->
    log "disappear"
    messagebox.textContent = ""
    messagebox.className = "gone"
    currentTimeoutId = null
    return    

############################################################
export info = (message) ->
    log "messageboxmodule.info"
    return unless typeof message == "string"
    messagebox.textContent = message
    messagebox.className = ""
    letDisappear()
    return

export error = (message) ->
    log "messageboxmodule.error"
    return unless typeof message == "string"
    messagebox.textContent = message
    messagebox.className = "error"
    letDisappear()
    return
