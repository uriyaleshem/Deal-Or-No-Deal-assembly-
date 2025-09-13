echo "# Deal or No Deal (Assembly)

This is an Assembly implementation of the classic *Deal or No Deal* game.
- Source code: \`project.asm\`
- Assets: all BMP files are under the \`assets/\` folder
- Built with TASM (Turbo Assembler)

## How to build
1. Assemble with TASM: \`tasm project.asm\`
2. Link with TLINK: \`tlink project.obj\`
3. Run the generated \`PROJECT.EXE\`

## Notes
- The game relies on the BMP images in \`assets\`.
- Keep the folder structure when running the program.
" > README.md

git add README.md
git commit -m "docs: add README"
git push
