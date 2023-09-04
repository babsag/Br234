.class Lcom/ca/mas/core/policy/d$a$a;
.super Ljava/util/TimerTask;
.source "LocationAssertion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/policy/d$a;->onProviderEnabled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Timer;

.field final synthetic d:Lcom/ca/mas/core/policy/d$a;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/policy/d$a;Ljava/lang/String;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/policy/d$a$a;->d:Lcom/ca/mas/core/policy/d$a;

    iput-object p2, p0, Lcom/ca/mas/core/policy/d$a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ca/mas/core/policy/d$a$a;->c:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ca/mas/core/policy/d$a$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a$a;->d:Lcom/ca/mas/core/policy/d$a;

    iget-object v0, v0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    iget-object v1, p0, Lcom/ca/mas/core/policy/d$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ca/mas/core/policy/d;->c(Lcom/ca/mas/core/policy/d;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ca/mas/core/policy/d;->b(Lcom/ca/mas/core/policy/d;Landroid/location/Location;)Landroid/location/Location;

    .line 2
    iget v0, p0, Lcom/ca/mas/core/policy/d$a$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ca/mas/core/policy/d$a$a;->a:I

    .line 3
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a$a;->d:Lcom/ca/mas/core/policy/d$a;

    iget-object v0, v0, Lcom/ca/mas/core/policy/d$a;->a:Lcom/ca/mas/core/policy/d;

    invoke-static {v0}, Lcom/ca/mas/core/policy/d;->a(Lcom/ca/mas/core/policy/d;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ca/mas/core/policy/d$a$a;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ca/mas/core/policy/d$a$a;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
