.class public Lbr/com/topaz/r/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/d$a;
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/j$b;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/r/d;

.field private c:Lbr/com/topaz/r/b;

.field private d:Lbr/com/topaz/r/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/r/d;Lbr/com/topaz/r/b;Lbr/com/topaz/r/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/r/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/r/f;->b:Lbr/com/topaz/r/d;

    iput-object p3, p0, Lbr/com/topaz/r/f;->c:Lbr/com/topaz/r/b;

    iput-object p4, p0, Lbr/com/topaz/r/f;->d:Lbr/com/topaz/r/j;

    invoke-virtual {p3, p0}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    iget-object p1, p0, Lbr/com/topaz/r/f;->d:Lbr/com/topaz/r/j;

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/j;->a(Lbr/com/topaz/r/j$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->b:Lbr/com/topaz/r/d;

    invoke-interface {v0}, Lbr/com/topaz/r/d;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->c:Lbr/com/topaz/r/b;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    iget-object v0, p0, Lbr/com/topaz/r/f;->d:Lbr/com/topaz/r/j;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->b:Lbr/com/topaz/r/d;

    invoke-interface {v0}, Lbr/com/topaz/r/d;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->b:Lbr/com/topaz/r/d;

    invoke-interface {v0}, Lbr/com/topaz/r/d;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/r/f;->b:Lbr/com/topaz/r/d;

    invoke-interface {v0}, Lbr/com/topaz/r/d;->b()V

    return-void
.end method
