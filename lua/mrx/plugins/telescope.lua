local telescope_setup, telescope = pcall(require, 'telescope')

telescope.setup()
telescope.load_extension('fzf')
