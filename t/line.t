use Test;
use ASMTestCommon;
use Algorithm::SpiralMatrix;

{
    my $out_matrix = dump_matrix(
        &rectangle_line,
        11, 3, 50,
        :direction('x'), :order('clockwise')
    );
    is(
        $out_matrix,
        qq:to/END/.chomp,
          0   0   0   0   0   0   0   0   0   0   0
         11   9   7   5   3   1   2   4   6   8  10
          0   0   0   0   0   0   0   0   0   0   0
        END
        'distance:clockwise line 11x3'
    );
    diag "\n$out_matrix\n";
}

{
    my $out_matrix = dump_matrix(
        &rectangle_line,
        3, 11, 50,
        :direction('y'), :order('clockwise')
    );
    is(
        $out_matrix,
        qq:to/END/.chomp,
          0  10   0
          0   8   0
          0   6   0
          0   4   0
          0   2   0
          0   1   0
          0   3   0
          0   5   0
          0   7   0
          0   9   0
          0  11   0
        END
        'distance:clockwise line 3x11'
    );
    diag "\n$out_matrix\n";
}

{
    my $out_matrix = dump_matrix(
        &rectangle_line,
        11, 3, 50,
        :direction('x'), :order('x-y')
    );
    is(
        $out_matrix,
        qq:to/END/.chomp,
          0   0   0   0   0   0   0   0   0   0   0
         10   8   6   4   2   1   3   5   7   9  11
          0   0   0   0   0   0   0   0   0   0   0
        END
        'distance:x-y line 11x3'
    );
    diag "\n$out_matrix\n";
}

{
    my $out_matrix = dump_matrix(
        &rectangle_line,
        3, 11, 50,
        :direction('y'), :order('x-y')
    );
    is(
        $out_matrix,
        qq:to/END/.chomp,
          0  10   0
          0   8   0
          0   6   0
          0   4   0
          0   2   0
          0   1   0
          0   3   0
          0   5   0
          0   7   0
          0   9   0
          0  11   0
        END
        'distance:clockwise line 3x11'
    );
    diag "\n$out_matrix\n";
}

done-testing;
