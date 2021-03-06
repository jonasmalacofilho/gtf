class TestAssertions extends gtf.Test {
	public function new() {}

	@test function _assertEquals() {
		assertEquals( 10, 10 );
		assertEquals( 1, 10 );
		assertEquals( 10, { throw 'An error!'; 0; } );
	}

	@test function _assertAcceptable() {
		assertAcceptable( 11, 1, 10 );
		assertAcceptable( 11, .1, 10 );
		assertAcceptable( 10, .1, { throw 'An error!'; 0; } );
	}

	@test function _assertTrue() {
		assertTrue( 10<=20 );
		assertTrue( 10>=20 );
		assertTrue( { throw 'An error!'; false; } );
	}

	@test function _assertFalse() {
		assertFalse( 10>=20 );
		assertFalse( 10<=20 );
		assertFalse( { throw 'An error!'; true; } );
	}

	@test function _assertThrows() {
		assertThrows( throw 'An error!' );
		assertThrows( 10 );
	}

	@test function _assertRaises() {
		assertRaises( 'An error!', throw 'An error!' );
		assertRaises( 'An error!', throw 'Another error#' );
		assertRaises( 'An error!', 10 );
	}
	
}
