package NumericFields::Field;

use strict;

sub _customfield_types {
    my $customfield_types = {
        ninteger => {
            label             => 'Text(Integer)',
            column_def        => 'vinteger_idx',
            order             => 250,
            no_default        => 1,
            field_html        => \&_field_html,
        },
        nfloat => {
            label             => 'Text(Float)',
            column_def        => 'vfloat_idx',
            order             => 251,
            no_default        => 1,
            field_html        => \&_field_html,
        },
    };
}

sub _field_html {
    return <<'MTML';
                <input type="text" name="<mt:var name="field_name" escape="html">" id="<mt:var name="field_id">" value="<mt:var name="field_value" escape="html">" class="full-width ti" />
MTML
}

1;