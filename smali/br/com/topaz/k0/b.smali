.class public Lbr/com/topaz/k0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lbr/com/topaz/k0/a;
    .locals 3

    invoke-static {p0}, Lbr/com/topaz/l/p;->a(Landroid/content/Context;)Lbr/com/topaz/l/o;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->Q()Lbr/com/topaz/k0/f;

    move-result-object v0

    invoke-static {p0}, Lbr/com/topaz/w0/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbr/com/topaz/k/a;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lbr/com/topaz/k/a;-><init>([B)V

    new-instance v1, Lbr/com/topaz/u0/a;

    invoke-direct {v1}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-static {p0, v0, v2, v1}, Lbr/com/topaz/k0/a;->a(Landroid/content/Context;Lbr/com/topaz/k0/f;Lbr/com/topaz/k/a;Lbr/com/topaz/u0/a;)Lbr/com/topaz/k0/a;

    move-result-object p0

    return-object p0
.end method
