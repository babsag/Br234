.class Lbr/com/topaz/c/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/v0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/c/g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/c/g;


# direct methods
.method constructor <init>(Lbr/com/topaz/c/g;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lbr/com/topaz/u0/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/l/l;

    invoke-direct {v0}, Lbr/com/topaz/l/l;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {v1}, Lbr/com/topaz/c/g;->a(Lbr/com/topaz/c/g;)Lbr/com/topaz/u0/r;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {p1}, Lbr/com/topaz/c/g;->a(Lbr/com/topaz/c/g;)Lbr/com/topaz/u0/r;

    move-result-object p1

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {v1}, Lbr/com/topaz/c/g;->b(Lbr/com/topaz/c/g;)Lbr/com/topaz/l/x;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {p1}, Lbr/com/topaz/c/g;->a(Lbr/com/topaz/c/g;)Lbr/com/topaz/u0/r;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {v1}, Lbr/com/topaz/c/g;->b(Lbr/com/topaz/c/g;)Lbr/com/topaz/l/x;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "6"

    const-string v1, "ASMS"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lbr/com/topaz/c/g$a;->a:Lbr/com/topaz/c/g;

    invoke-static {p1}, Lbr/com/topaz/c/g;->c(Lbr/com/topaz/c/g;)Lbr/com/topaz/c/g$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lbr/com/topaz/c/g$b;->a(Lbr/com/topaz/l/l;)V

    return-void
.end method
