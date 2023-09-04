.class Lbr/com/topaz/g0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/i/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/g0/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/g0/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/g0/e;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/l/g;I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/l/g;)Z

    iget-object v0, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->w()Lbr/com/topaz/w/e;

    move-result-object p1

    invoke-static {v0, p1}, Lbr/com/topaz/g0/e;->a(Lbr/com/topaz/g0/e;Lbr/com/topaz/w/e;)V

    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-static {p1, p2}, Lbr/com/topaz/g0/e;->e(Lbr/com/topaz/g0/e;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-static {p1}, Lbr/com/topaz/g0/e;->f(Lbr/com/topaz/g0/e;)Lbr/com/topaz/b0/e;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/b0/e;->b()V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    iget-object p1, p0, Lbr/com/topaz/g0/e$b;->a:Lbr/com/topaz/g0/e;

    invoke-static {p1}, Lbr/com/topaz/g0/e;->g(Lbr/com/topaz/g0/e;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "002"

    invoke-virtual {p1, v0, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
