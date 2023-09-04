.class Lbr/com/topaz/f/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/f/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/f/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/f/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/f/b$a;->a:Lbr/com/topaz/f/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/f/b$a;->a:Lbr/com/topaz/f/b;

    invoke-static {v0}, Lbr/com/topaz/f/b;->a(Lbr/com/topaz/f/b;)Lbr/com/topaz/g0/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/g0/a;->c()V

    return-void
.end method
