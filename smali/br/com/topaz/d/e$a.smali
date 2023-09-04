.class Lbr/com/topaz/d/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/d/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/d/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/d/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/d/e;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/d/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    new-instance v1, Lbr/com/topaz/l/l;

    invoke-direct {v1}, Lbr/com/topaz/l/l;-><init>()V

    invoke-static {v0, v1}, Lbr/com/topaz/d/e;->a(Lbr/com/topaz/d/e;Lbr/com/topaz/l/l;)Lbr/com/topaz/l/l;

    iget-object v0, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-static {v0}, Lbr/com/topaz/d/e;->a(Lbr/com/topaz/d/e;)Lbr/com/topaz/l/l;

    move-result-object v0

    const-string v1, "6"

    const-string v2, "BGP"

    invoke-virtual {v0, v1, v2}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-static {v0}, Lbr/com/topaz/d/e;->a(Lbr/com/topaz/d/e;)Lbr/com/topaz/l/l;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-static {v1}, Lbr/com/topaz/d/e;->b(Lbr/com/topaz/d/e;)Lbr/com/topaz/d/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbr/com/topaz/d/c;->a(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object p1

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-static {p1}, Lbr/com/topaz/d/e;->c(Lbr/com/topaz/d/e;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-static {v0}, Lbr/com/topaz/d/e;->a(Lbr/com/topaz/d/e;)Lbr/com/topaz/l/l;

    move-result-object v0

    invoke-static {p1, v0}, Lbr/com/topaz/r/a;->a(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/b;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/d/e$a;->a:Lbr/com/topaz/d/e;

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method
