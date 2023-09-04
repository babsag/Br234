.class Lbr/com/topaz/s/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/s/c;->a(Lbr/com/topaz/s0/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/s0/b;

.field final synthetic b:Lbr/com/topaz/s/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/s/c;Lbr/com/topaz/s0/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/s/c$a;->b:Lbr/com/topaz/s/c;

    iput-object p2, p0, Lbr/com/topaz/s/c$a;->a:Lbr/com/topaz/s0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/s/c$a;->a:Lbr/com/topaz/s0/b;

    invoke-interface {v0}, Lbr/com/topaz/s0/b;->run()V

    return-void
.end method
