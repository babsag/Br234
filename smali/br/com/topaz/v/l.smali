.class public final synthetic Lbr/com/topaz/v/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbr/com/topaz/v/h;


# direct methods
.method public synthetic constructor <init>(Lbr/com/topaz/v/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/v/l;->a:Lbr/com/topaz/v/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/l;->a:Lbr/com/topaz/v/h;

    invoke-static {v0}, Lbr/com/topaz/v/h;->l(Lbr/com/topaz/v/h;)V

    return-void
.end method
