DICT_NAME			= "Dictionary of Queer Terms"
DICT_SRC_PATH	= index.xml
CSS_PATH			= index.css
PLIST_PATH		= info.plist

DICT_BUILD_OPTS	= -v 10.6

DICT_BUILD_TOOL_DIR	= "/Volumes/Auxiliary Tools/Dictionary Development Kit"
DICT_BUILD_TOOL_BIN	= "$(DICT_BUILD_TOOL_DIR)/bin"

DICT_DEV_KIT_OBJ_DIR	= ./objects
export  DICT_DEV_KIT_OBJ_DIR

DESTINATION_FOLDER		= ~/Library/Dictionaries

RM = /bin/rm

all:
	"$(DICT_BUILD_TOOL_BIN)/build_dict.sh" $(DICT_BUILD_OPTS) $(DICT_NAME) $(DICT_SRC_PATH) $(CSS_PATH) $(PLIST_PATH)
	echo "Done."

install:
	echo "Installing into $(DESTINATION_FOLDER)".
	mkdir -p $(DESTINATION_FOLDER)
	ditto --noextattr --norsrc $(DICT_DEV_KIT_OBJ_DIR)/$(DICT_NAME).dictionary  $(DESTINATION_FOLDER)/$(DICT_NAME).dictionary
	touch $(DESTINATION_FOLDER)
	echo "Done."
	echo "To test the new dictionary, try Dictionary.app."

clean:
	$(RM) -rf $(DICT_DEV_KIT_OBJ_DIR)
