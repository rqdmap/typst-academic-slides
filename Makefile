TYPST = typst
SOURCES = Demo.typ
OUTPUTS = $(SOURCES:.typ=.pdf)

# 默认目标：编译所有文档
all: $(OUTPUTS)

# 通用编译规则
%.pdf: %.typ
	$(TYPST) compile $< $@

# 监视文件变化
watch-%: %.typ
	$(TYPST) watch $< $(@:watch-%=%.pdf)

# 清理生成的文件
clean:
	rm -f $(OUTPUTS)

# 帮助信息
help:
	@echo "Typst项目Makefile帮助:"
	@echo "make        		- 编译所有文档"
	@echo "make watch-xxx 	- 监视xxx.typ变化"
	@echo "make clean  		- 删除所有生成的PDF"

.PHONY: all clean help
