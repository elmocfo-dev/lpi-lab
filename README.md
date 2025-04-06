# lpi-lab
Laboratório de estudos para certificações LPI (LPIC-1 e LPIC-2)
# 🐧 LPI-Lab: Laboratório de Certificação Linux

**Objetivo**: Ambiente para praticar cenários das certificações LPIC-1 e LPIC-2 com Vagrant, Packer e scripts de troubleshooting.

## 🛠️ Tecnologias
- Vagrant
- Packer
- Shell Script
- Ansible (opcional)

## 📋 Estrutura do Projeto
```
lpi-lab/
├── vagrant/          # Máquinas virtuais para cenários
├── packer/           # Imagens base customizadas
├── scripts/          # Scripts de automação
└── challenges/       # Documentação de desafios
```

## 🚀 Como Usar
1. **Iniciar laboratório**:
   ```bash
   cd vagrant/
   vagrant up
   ```

2. **Aplicar cenário de falha** (exemplo):
   ```bash
   vagrant provision --provision-with break-boot
   ```

## 🔍 Desafios Implementados
| Tópico LPI       | Cenário                     | Comando para "quebrar"          |
|------------------|-----------------------------|---------------------------------|
| **101-3**        | Bootloader corrompido       | `sudo rm /boot/grub/grub.cfg`   |
| **102-4**        | Dependências de pacotes     | `sudo dpkg --force-depends -r libc6` |

## 🤝 Como Contribuir
1. Faça um fork do projeto
2. Crie um branch: `git checkout -b minha-melhoria`
3. Commit suas mudanças: `git commit -m 'Adicionei novo cenário'`
4. Envie para o branch: `git push origin minha-melhoria`

## 📜 Licença
Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

Feito com ❤️ por [Elmo Crisóstomo Filho](https://github.com/seu-usuario)
