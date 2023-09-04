.class public Lbr/com/topaz/e0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/e0/a;


# static fields
.field private static d:Z = false

.field private static e:Z = false

.field private static f:Z


# instance fields
.field private final a:Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;

.field private final b:Lbr/com/topaz/l/e0;

.field private final c:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;Lbr/com/topaz/l/e0;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/e0/b;->a:Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;

    iput-object p2, p0, Lbr/com/topaz/e0/b;->b:Lbr/com/topaz/l/e0;

    iput-object p3, p0, Lbr/com/topaz/e0/b;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method static synthetic a(Lbr/com/topaz/e0/b;)Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/e0/b;->a:Lbr/com/topaz/heartbeat/wrapper/FridaWrapper;

    return-object p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lbr/com/topaz/e0/b;->d:Z

    return p0
.end method

.method static synthetic b(Lbr/com/topaz/e0/b;)Lbr/com/topaz/l/e0;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/e0/b;->b:Lbr/com/topaz/l/e0;

    return-object p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lbr/com/topaz/e0/b;->e:Z

    return p0
.end method

.method static synthetic c(Lbr/com/topaz/e0/b;)Lbr/com/topaz/heartbeat/utils/OFDException;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/e0/b;->c:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-object p0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lbr/com/topaz/e0/b;->f:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lbr/com/topaz/e0/b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbr/com/topaz/e0/b;->f:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/e0/b$c;

    invoke-direct {v1, p0}, Lbr/com/topaz/e0/b$c;-><init>(Lbr/com/topaz/e0/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-boolean v0, Lbr/com/topaz/e0/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbr/com/topaz/e0/b;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/e0/b$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/e0/b$a;-><init>(Lbr/com/topaz/e0/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()V
    .locals 2

    sget-boolean v0, Lbr/com/topaz/e0/b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lbr/com/topaz/e0/b;->e:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/e0/b$b;

    invoke-direct {v1, p0}, Lbr/com/topaz/e0/b$b;-><init>(Lbr/com/topaz/e0/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
