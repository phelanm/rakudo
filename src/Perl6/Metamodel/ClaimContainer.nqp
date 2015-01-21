role Perl6::Metamodel::ClaimContainer {
    has @!claims;

    method claim_method($obj, $name, $code_obj) {
        self.add_method($obj, $name, $code_obj);
        nqp::push(@!claims, $name);
    }

    method claims($obj) {
        @!claims
    }
}