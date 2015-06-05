<?php

$finder = Symfony\CS\Finder\DefaultFinder::create()
    ->in(__DIR__);

return Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::PSR2_LEVEL)
    ->fixers(array('-psr0', '-unalign_double_arrow', 'no_blank_lines_before_namespace', 'short_array_syntax', 'align_equals', 'concat_with_spaces'))
    ->finder($finder);
