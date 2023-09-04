.class public Lbr/com/topaz/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/h/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/h/c;

    invoke-direct {v0, p1, p0}, Lbr/com/topaz/h/c;-><init>(Landroid/content/Context;Lbr/com/topaz/h/c$a;)V

    invoke-virtual {v0}, Lbr/com/topaz/h/c;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Failure request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "EventLib"

    const-string v1, "Success request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
