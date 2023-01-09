---@meta

local chatbox = {}

---Websocket URI for the chatbox server
chatbox.SERVER_URL = "wss://sc-chatbox-ougi.lem.sh"

---Error messages for the chatbox server
chatbox.closeReasons = {
  ["SERVER_STOPPING"] = 4000,
  ["EXTERNAL_GUESTS_NOT_ALLOWED"] = 4001,
  ["UNKNOWN_LICENSE_KEY"] = 4002,
  ["INVALID_LICENSE_KEY"] = 4003,
  ["DISABLED_LICENSE"] = 4004,
  ["CHANGED_LICENSE_KEY"] = 4005,
  ["FATAL_ERROR"] = 4100,
  ["UNSUPPORTED_ENDPOINT"] = 4101,
}

---Uses the attached chatbox to say `text` with `name` globally.
---@param text string "Message to send"
---@param name string "Name of the speaker"
---@param prefix? nil "Prefix to use; deprecated"
---@param mode? string "Formatting mode to use; defaults to Markdown"
---@return boolean
function chatbox.say(text, name, prefix, mode) end

---Uses the attached chatbox to send `text` to `user` as `name`
---@param user string "The target user"
---@param text string "Message to send"
---@param name string "Name of the speaker"
---@param prefix? nil "Prefix to use; deprecated"
---@param mode? string "Formatting mode to use; defaults to Markdown"
function chatbox.tell(user, text, name, prefix, mode) end

---Halts all of this program's running chatboxes.
---@return nil
function chatbox.stop() end

---Runs the chatbox.
---@return string chatboxError "Error message of the chatbox"
---@return integer chatboxErrorCode "Error code of the chatbox"
function chatbox.run() end

---Returns the chatbox's error
---@return string chatboxError "Error message of the chatbox"
---@return integer chatboxErrorCode "Error code of the chatbox"
function chatbox.getError() end

---Returns the status of the chatbox
---@return boolean running
---@return boolean connected
function chatbox.isConnected() end

---Returns the owner of the license key.
---@return string licenseOwner "Owner of the license"
function chatbox.getLicenseOwner() end

---Returns the capabilities of the chatbox
---@return table capabilities
function chatbox.getCapabilities() end

---Returns the usernames of chatbox users
---@return players
function chatbox.getPlayers() end

---Returns the usernames and UUIDs of chatbox users
---@deprecated "Retained for compatibility only"
---@return table
function chatbox.getPlayerList() end

---Checks if the chatbox has a capability
---@deprecated "Retained for compatibility only"
---@return boolean
function chatbox.hasCapability(capability) end

return chatbox
