require('code_runner').setup({
  filetype = {
    python = "python -u",
	asm = {
		"nasm -fobj $fileName &&",
		"alink -subsys console -oPE $fileNameWithoutExt.obj &&",
		"$fileNameWithoutExt"
	},
	c = {
		"gcc -static $fileName -o $fileNameWithoutExt &&",
		"$fileNameWithoutExt"
	},
	cpp = {
		"g++ -static $fileName -o $fileNameWithoutExt &&",
		"$fileNameWithoutExt"
	}
  },
})
