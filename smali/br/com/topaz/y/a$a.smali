.class Lbr/com/topaz/y/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/y/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbr/com/topaz/y/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/y/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/y/a$a;->b:Lbr/com/topaz/y/a;

    iput-object p2, p0, Lbr/com/topaz/y/a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/y/a$a;->b:Lbr/com/topaz/y/a;

    iget-object v1, p0, Lbr/com/topaz/y/a$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbr/com/topaz/y/a;->b(Landroid/content/Context;)V

    return-void
.end method
