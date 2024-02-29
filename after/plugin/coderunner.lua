require('code_runner').setup({
	filetype = {
		python = "python3 -u",
		asm = {
			"nasm -felf64 $fileName &&",
			"ld $fileNameWithoutExt.o -o $fileNameWithoutExt &&",
			"./$fileNameWithoutExt"
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
