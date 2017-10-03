if has('mac')

  function! imagepaste#paste(save_path)
    " TODO: check whether command pngpaste exists
    let ret = system("pngpaste" . " " . a:save_path)
    if v:shell_error
      echomsg "[Error] " . ret
      return
    endif

    " TODO: overwrite check
    echo printf("Clipboard image saved at %s (%d bytes)", a:save_path, getfsize(a:save_path))

    " write to the current buffer
    let content = printf("![%s](%s)", a:save_path, a:save_path)
    put =content
  endfunction

  command! -nargs=1 ImagePaste call imagepaste#paste(<q-args>)

endif
