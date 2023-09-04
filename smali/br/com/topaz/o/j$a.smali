.class Lbr/com/topaz/o/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/o/j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/o/j;


# direct methods
.method constructor <init>(Lbr/com/topaz/o/j;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/j$a;->a:Lbr/com/topaz/o/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o/j$a;->a:Lbr/com/topaz/o/j;

    invoke-static {v0}, Lbr/com/topaz/o/j;->a(Lbr/com/topaz/o/j;)V

    return-void
.end method
