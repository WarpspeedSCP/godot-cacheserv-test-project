extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	var f = FileAccessCached.new();
	f.open("nbig.txt", File.READ, FileCacheManager.FIFO);
	print(var2str(FileCacheManager.get_state()));
	var g = FileAccessCached.new();
	g.open("val.grind", File.READ, FileCacheManager.KEEP);
	print(var2str(FileCacheManager.get_state()));
	g.seek(21000);
	print(var2str(FileCacheManager.get_state()));
	print("read 100 bytes\n" + f.get_buffer(100).get_string_from_ascii());
	print(var2str(FileCacheManager.get_state()));
	f.seek(90000);
	f.close();
	g.close();
	g.open("nbig.txt", File.READ, FileCacheManager.FIFO);
	f.open("val.grind", File.READ, FileCacheManager.KEEP);
	print(var2str(FileCacheManager.get_state()));
	print("\n\n1\n\n\n", g.get_buffer(6000));
	print(var2str(FileCacheManager.get_state()));
	print("\n\n2\n\n\n", g.get_buffer(6000));
	print(var2str(FileCacheManager.get_state()));
	print("\n\n3\n\n\n", g.get_buffer(6000));
	print(var2str(FileCacheManager.get_state()));
	print("\n\n4\n\n\n", g.get_buffer(6000).get_string_from_ascii());
	print("\n\ncpp::::::    \n" + f.get_buffer(6000).get_string_from_ascii());
	print(var2str(FileCacheManager.get_state()));
	g.free();
	f.free();

	g = FileAccessCached.new();
	g.open("nbig.txt", File.READ_WRITE, FileCacheManager.FIFO);
	g.seek(35);
	print("asdasd\n\n\njnsjfnsdfnsdnfdsf\n\n\nmsdkndsfjsd\n\n\n" + g.get_line());
	g.store_line("ayyy lmao");
	g.free();




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
