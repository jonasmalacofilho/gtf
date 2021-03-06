package gtf;

@:allow( gtf.Runner )
class TimingResult {

	public var tests( default, null ):Int;
	public var results( default, null ):Array<{ seconds:Float, expr:String, pos:haxe.PosInfos }>;
	public var errors( default, null ):Array<{ error:Dynamic, expr:String, pos:haxe.PosInfos }>;

	@:allow( gtf.Runner )
	function new() {
		tests = 0;
		results = [];
		errors = [];
	}
}
