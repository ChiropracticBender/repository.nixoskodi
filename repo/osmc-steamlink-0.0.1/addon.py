import os, sys
import xbmc
import xbmcaddon
import xbmcgui
from subprocess import call


addon       = xbmcaddon.Addon()
addonname = addon.getAddonInfo('name')

launcher =  addon.getAddonInfo('path').decode('utf-8') +  '/ressources/lib/shell/launch-osmc-steamlink.sh'

#xbmc.executebuiltin('System.Exec(launcher)')
os.system("bash " + launcher)