.class Lcaf/io/s$a;
.super Ljava/lang/Object;
.source "EmulatorDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaf/io/s;->a(Lcaf/io/s$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/s$b;

.field final synthetic b:Lcaf/io/s;


# direct methods
.method constructor <init>(Lcaf/io/s;Lcaf/io/s$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/s$a;->b:Lcaf/io/s;

    iput-object p2, p0, Lcaf/io/s$a;->a:Lcaf/io/s$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/s$a;->b:Lcaf/io/s;

    invoke-static {v0}, Lcaf/io/s;->d(Lcaf/io/s;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcaf/io/s$a;->a:Lcaf/io/s$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcaf/io/s$b;->a(Z)V

    :cond_0
    return-void
.end method
