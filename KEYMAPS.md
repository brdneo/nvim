# ⌨️ Neovim Keymaps Reference

## 🚀 Geral & Sistema
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<C-s>` | Salvar arquivo | Normal / Insert |
| `<C-z>` | Desfazer (Undo) | Normal / Visual / Insert |
| `<C-r>` | Refazer (Redo) | Normal / Insert |
| `<C-a>` | Selecionar tudo | Normal / Insert |
| `d` | Deletar para o "Void Register" (não sobrescreve clipboard) | Normal |

## 📋 Área de Transferência (Clipboard do SO)
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<C-c>` | Copiar para o sistema | Normal / Visual |
| `y` | Copiar para o sistema (sobrescreve o `y` padrão) | Normal |
| `yap` | Copiar o parágrafo inteiro para o sistema | Normal |
| `<C-x>` | Recortar para o sistema | Normal / Visual |
| `<C-v>` | Colar do sistema | Normal / Visual / Insert |

## 🧭 Navegação & Janelas
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `j` / `k` / `Setas` | Move o cursor e centraliza a tela (`zz`) | Normal |
| `<C-h/j/k/l>` | Navegar entre painéis (splits) | Normal |
| `<C-Setas>` | Redimensionar painéis ativamente | Normal |
| `H` / `L` | Buffer anterior / próximo | Normal |
| `<leader>bd` | Fechar buffer atual | Normal |
| `<leader>bo` | Fechar todos os outros buffers | Normal |

## 💻 Edição de Código & LSP
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `J` / `K` | Mover linha/bloco selecionado para baixo/cima | Visual |
| `>` / `<` | Indentar e manter seleção | Visual |
| `<C-f>` | Formatar código (via Ruff/Script) | Normal |
| `<leader>py` | Executar script Python atual em split (detecta `.venv`) | Normal |
| `<M-q>` | Abrir Code Actions (Sugestões do LSP) | Normal / Insert |
| `<C-p>` | Mostrar assinatura da função (Signature Help) | Normal / Insert |
| `<C-i>` | Otimizar Imports | Normal / Insert |
| `<C-d>` | Ir para definição | Normal / Insert |
| `<C-e>` | Listar referências (Telescope) | Normal / Insert |
| `<C-n>` | Renomear variável (Rename) | Normal / Insert |
| `[d` / `]d` | Diagnóstico (Erro/Aviso) anterior / próximo | Normal |
| `<leader>q` | Abrir lista de diagnósticos (Loclist) | Normal |

## 🔍 Busca (Telescope)
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<leader><leader>` | Buscar arquivos | Normal |
| `<leader>sf` | Buscar arquivos | Normal |
| `<leader>fg` / `<C-b>`| Busca global por texto (Live Grep) | Normal |
| `<leader>sg` | Busca global por texto (Live Grep) | Normal |
| `<leader>sw` | Buscar palavra sob o cursor | Normal |
| `<leader>sd` | Buscar diagnósticos | Normal |
| `<leader>sb` | Buscar nos buffers abertos | Normal |
| `<leader>sh` | Buscar ajuda (Help Tags) | Normal |
| `<leader>sk` | Buscar mapeamentos de teclas | Normal |
| `<leader>s.` | Buscar arquivos recentes | Normal |
| `<leader>sr` | Retomar última busca | Normal |
| `<leader>uC` | Seletor de Cores (Colorscheme) | Normal |

## 🤖 Inteligência Artificial (Agentic Gemini)
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<leader>aa` | Abrir/Fechar chat do Gemini | Normal / Visual / Insert |
| `<leader>ac` | Adicionar arquivo ou seleção ao contexto | Normal / Visual |
| `<leader>an` | Iniciar nova sessão (limpar histórico) | Normal / Visual / Insert |
| `<leader>ad` | Adicionar diagnóstico de erro atual ao contexto | Normal |

## 🌳 Exploradores & Git
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<leader>e` | Abrir/Fechar Neo-tree (Explorador de Arquivos) | Normal |
| `<leader>ge` | Neo-tree focado no status do Git | Normal |
| `<leader>th` | Alternar arquivos ocultos no Neo-tree | Normal |
| `<C-g>` | Visualizar alterações do Git (Preview Hunk) | Normal |
| `<leader>gt` | Alternar visualização de autoria na linha (Blame) | Normal |
| `<leader>lg` | Abrir LazyGit | Normal |

## 🐛 Depuração (DAP)
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<F5>` | Iniciar/Continuar (Continue) | Normal |
| `<F8>` | Pular por cima (Step Over) | Normal |
| `<F7>` | Entrar na função (Step Into) | Normal |
| `<F9>` | Sair da função (Step Out) | Normal |
| `<leader>b` | Adicionar/Remover Breakpoint | Normal |

## 🎨 Extras (Zdraw)
| Atalho | Ação | Modo |
| :--- | :--- | :---: |
| `<leader>ds` | Iniciar modo de desenho | Normal |
| `<leader>de` | Parar modo de desenho | Normal |
| `<LeftMouse>` | Desenhar (apenas quando ativo) | Normal |
