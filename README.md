# 🧪 Software e Configuração

Este projeto usa o **[Robot Framework](https://robotframework.org/)** para automação de testes, com as bibliotecas:

- `SeleniumLibrary` (UI)
- `RequestsLibrary` (API)
- `BuiltIn` (nativa)

As dependências estão no `requirements.txt`.

---

# ▶️ Execução dos Testes

```bash
robot tests/
```

Com relatório em pasta específica:

```bash
robot -d results tests/
```

> Ative o ambiente virtual antes, se estiver usando:

```bash
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate      # Windows
```
