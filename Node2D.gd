extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var f = FileAccessCached.new();

	f.open("nbig.txt", File.READ_WRITE, FileCacheManager.FIFO);
	f.store_buffer('$'.to_utf8());
	f.store_buffer('$'.to_utf8());
	f.store_line('hi, writing!');
	#f.store_8(36);
	print(var2str(FileCacheManager.get_state()));
	for i in range(10):
		print(f.get_line());

	f.free();
	# var g = FileAccessCached.new();
	# g.open("val.grind", File.READ, FileCacheManager.KEEP);
	# print(var2str(FileCacheManager.get_state()));
	# g.seek(21000);
	# print(var2str(FileCacheManager.get_state()));
	# print("read 100 bytes\n" + f.get_buffer(100).get_string_from_ascii());
	# print(var2str(FileCacheManager.get_state()));
	# f.seek(90000);
	# print(var2str(FileCacheManager.get_state()));
	# print("\n\n1\n\n\n", f.get_buffer(6000));
	# print(var2str(FileCacheManager.get_state()));
	# print("\n\n2\n\n\n", f.get_buffer(6000));
	# print(var2str(FileCacheManager.get_state()));
	# print("\n\n3\n\n\n", f.get_buffer(6000));
	# print(var2str(FileCacheManager.get_state()));
	# print("\n\n4\n\n\n", f.get_buffer(6000));
	# print("\n\ncpp::::::    \n" + g.get_buffer(6000).get_string_from_ascii());
	# #for i in f.get_buffer(8000):
	# #	print(i);
	# #print(var2str(FileCacheManager.get_state()));
	# print("\n\n5\n\n\n", f.get_buffer(6000).get_string_from_ascii());
	# g.free();
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
