.class Lbr/com/topaz/r/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/r/k;->a(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Lbr/com/topaz/r/k;


# direct methods
.method constructor <init>(Lbr/com/topaz/r/k;ZLjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r/k$a;->e:Lbr/com/topaz/r/k;

    iput-boolean p2, p0, Lbr/com/topaz/r/k$a;->a:Z

    iput-object p3, p0, Lbr/com/topaz/r/k$a;->b:Ljava/util/List;

    iput-object p4, p0, Lbr/com/topaz/r/k$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lbr/com/topaz/r/k$a;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 0

    iget-boolean p1, p0, Lbr/com/topaz/r/k$a;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/r/k$a;->e:Lbr/com/topaz/r/k;

    invoke-static {p1}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k;)V

    iget-object p1, p0, Lbr/com/topaz/r/k$a;->e:Lbr/com/topaz/r/k;

    invoke-static {p1}, Lbr/com/topaz/r/k;->b(Lbr/com/topaz/r/k;)Lbr/com/topaz/r/k$c;

    move-result-object p1

    invoke-interface {p1}, Lbr/com/topaz/r/k$c;->a()V

    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 4

    iget-object p1, p0, Lbr/com/topaz/r/k$a;->e:Lbr/com/topaz/r/k;

    invoke-static {p1}, Lbr/com/topaz/r/k;->c(Lbr/com/topaz/r/k;)I

    iget-object p1, p0, Lbr/com/topaz/r/k$a;->e:Lbr/com/topaz/r/k;

    iget-object v0, p0, Lbr/com/topaz/r/k$a;->b:Ljava/util/List;

    iget-object v1, p0, Lbr/com/topaz/r/k$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/r/k$a;->d:Ljava/util/HashMap;

    iget-boolean v3, p0, Lbr/com/topaz/r/k$a;->a:Z

    invoke-static {p1, v0, v1, v2, v3}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k;Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method
