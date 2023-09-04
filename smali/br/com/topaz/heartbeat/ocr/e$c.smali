.class Lbr/com/topaz/heartbeat/ocr/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/ocr/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/util/List;Lbr/com/topaz/heartbeat/ocr/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/ocr/c$a;

.field final synthetic b:Lbr/com/topaz/heartbeat/ocr/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/heartbeat/ocr/c$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->b:Lbr/com/topaz/heartbeat/ocr/e;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->a:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/z/b;

    invoke-direct {v0}, Lbr/com/topaz/z/b;-><init>()V

    invoke-virtual {v0, p2}, Lbr/com/topaz/z/b;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->a:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {p2, p1, v0}, Lbr/com/topaz/heartbeat/ocr/c$a;->b(ILbr/com/topaz/z/b;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->b:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/ocr/e;->e(Lbr/com/topaz/heartbeat/ocr/e;)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    new-instance v0, Lbr/com/topaz/z/b;

    invoke-direct {v0}, Lbr/com/topaz/z/b;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lbr/com/topaz/z/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->a:Lbr/com/topaz/heartbeat/ocr/c$a;

    invoke-interface {v1, p1, v0}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e$c;->b:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/ocr/e;->e(Lbr/com/topaz/heartbeat/ocr/e;)V

    return-void
.end method
