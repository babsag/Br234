.class Lbr/com/topaz/w/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/w/c$a;->a(Lbr/com/topaz/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/w/f;

.field final synthetic b:Lbr/com/topaz/w/c$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/w/c$a;Lbr/com/topaz/w/f;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/c$a$a;->b:Lbr/com/topaz/w/c$a;

    iput-object p2, p0, Lbr/com/topaz/w/c$a$a;->a:Lbr/com/topaz/w/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbr/com/topaz/l/l;)V
    .locals 2

    const-string v0, "6"

    const-string v1, "HB_L"

    invoke-virtual {p1, v0, v1}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/w/c$a$a;->a:Lbr/com/topaz/w/f;

    const-string v1, "7"

    invoke-virtual {p1, v1, v0}, Lbr/com/topaz/l/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbr/com/topaz/w/c$a$a;->b:Lbr/com/topaz/w/c$a;

    iget-object v0, v0, Lbr/com/topaz/w/c$a;->b:Lbr/com/topaz/w/c;

    invoke-static {v0}, Lbr/com/topaz/w/c;->a(Lbr/com/topaz/w/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    new-instance v0, Lbr/com/topaz/w/c$a$a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/w/c$a$a$a;-><init>(Lbr/com/topaz/w/c$a$a;)V

    invoke-virtual {p1, v0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/r/k;->run()V

    return-void
.end method
