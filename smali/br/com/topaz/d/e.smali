.class public Lbr/com/topaz/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/r/k$c;
.implements Lbr/com/topaz/r/b$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbr/com/topaz/d/h;

.field private c:Lbr/com/topaz/d/c;

.field private d:Lbr/com/topaz/l/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/d/h;Lbr/com/topaz/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/d/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/d/e;->b:Lbr/com/topaz/d/h;

    iput-object p3, p0, Lbr/com/topaz/d/e;->c:Lbr/com/topaz/d/c;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/d/e;)Lbr/com/topaz/l/l;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/d/e;->d:Lbr/com/topaz/l/l;

    return-object p0
.end method

.method static synthetic a(Lbr/com/topaz/d/e;Lbr/com/topaz/l/l;)Lbr/com/topaz/l/l;
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/d/e;->d:Lbr/com/topaz/l/l;

    return-object p1
.end method

.method static synthetic b(Lbr/com/topaz/d/e;)Lbr/com/topaz/d/c;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/d/e;->c:Lbr/com/topaz/d/c;

    return-object p0
.end method

.method static synthetic c(Lbr/com/topaz/d/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/d/e;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/d/e;->b:Lbr/com/topaz/d/h;

    new-instance v1, Lbr/com/topaz/d/e$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/d/e$a;-><init>(Lbr/com/topaz/d/e;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/d/h;->a(Lbr/com/topaz/d/h$b;)V

    iget-object v0, p0, Lbr/com/topaz/d/e;->b:Lbr/com/topaz/d/h;

    invoke-virtual {v0}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public b(Lbr/com/topaz/l/l;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/d/e;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbr/com/topaz/r/a;->b(Landroid/content/Context;Lbr/com/topaz/l/l;)Lbr/com/topaz/r/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbr/com/topaz/r/k;->a(Lbr/com/topaz/r/k$c;)V

    invoke-virtual {p1}, Lbr/com/topaz/s0/a;->b()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
