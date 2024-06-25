extends Window;

func    _ready() -> void:
	self.close_requested.connect(func(): queue_free());
	pass;



#
