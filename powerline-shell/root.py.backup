from ..utils import BasicSegment
from datetime import date, datetime

bashmoji_list =['🐔', '🦴', '💫', '👽', '⭐', '🌮', '🤡', '🦊', '🐧', '🤖', 
			   '👺', '😽', '🐐', '👾', '🍣', '🦙', '🐦', '🦧', '🐫', '☕', '🌞', '⚡', '🐢', '😁', '🦏', '🦆', 
			   '🦄', '🧃', '🌈', '👹', '🦍', '👻', '🦋', '🌟', '🐌', '🌛', '🐗', '🐥', '🌯', '🦌',
			   '🌜', '🤔', '🐑', '🍕', '💥', '🐴','🐼',  '🔥', '🐣',
			   '🐰', '🐶', '✨', '🥪', '🦅', '🤠', '🐱', '🎃', '🌝', '😺', '💩', '🦇', '🐘', '🦜', '🐞', '🦉', '🍟', '🤑', '🤪', '😄', '🥤',
			   '🐝', '🐸', '🚀']

baremoji_list =['🐟', '💧', '🦈', '🐋', '🐠', '🧊', '🐚', '🦑', '🐡', '🐙', '🌊', '🐳', '💦', '🐬']





def emoji(emoji_list):
	now = datetime.now()
	start_date = date(now.year, 1, 1)
	today = date(now.year, now.month, now.day)
	delta = int((today - start_date).days)
	while delta > len(emoji_list):
		delta -= len(emoji_list)
	return emoji_list[delta-1]

class Segment(BasicSegment):

	def add_to_powerline(self):

		powerline = self.powerline
		root_indicators = {
			"bash": " " + emoji(bashmoji_list) + " \\$ ",
			"tcsh": " %# ",
			"zsh": " %# ",
			"bare": emoji(baremoji_list) + " $ ",
		}
		bg = powerline.theme.CMD_PASSED_BG
		fg = powerline.theme.CMD_PASSED_FG
		if powerline.args.prev_error != 0:
			fg = powerline.theme.CMD_FAILED_FG
			bg = powerline.theme.CMD_FAILED_BG
		powerline.append(root_indicators[powerline.args.shell], fg, bg, sanitize=False)
	
