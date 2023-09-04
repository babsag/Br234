.class Lbr/com/topaz/l0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/l0/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbr/com/topaz/n/a;

.field final synthetic c:Lbr/com/topaz/l0/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/l0/a;Landroid/content/Context;Lbr/com/topaz/n/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/l0/a$b;->c:Lbr/com/topaz/l0/a;

    iput-object p2, p0, Lbr/com/topaz/l0/a$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lbr/com/topaz/l0/a$b;->b:Lbr/com/topaz/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/l0/a$b;->c:Lbr/com/topaz/l0/a;

    iget-object v1, p0, Lbr/com/topaz/l0/a$b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lbr/com/topaz/l0/a;->a(Lbr/com/topaz/l0/a;Landroid/content/Context;)V

    iget-object v0, p0, Lbr/com/topaz/l0/a$b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->e()V

    return-void
.end method
