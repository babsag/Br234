.class public Lbr/com/topaz/heartbeat/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventInitializer:Lbr/com/topaz/heartbeat/EventInitializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lbr/com/topaz/heartbeat/Event;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "OFDHB:054"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/heartbeat/EventInitializer;

    invoke-direct {v0, p1}, Lbr/com/topaz/heartbeat/EventInitializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/topaz/heartbeat/Event;->eventInitializer:Lbr/com/topaz/heartbeat/EventInitializer;

    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/Event;->eventInitializer:Lbr/com/topaz/heartbeat/EventInitializer;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/EventInitializer;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/Event;->eventInitializer:Lbr/com/topaz/heartbeat/EventInitializer;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/heartbeat/EventInitializer;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sendEvent()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/Event;->eventInitializer:Lbr/com/topaz/heartbeat/EventInitializer;

    invoke-virtual {v0}, Lbr/com/topaz/heartbeat/EventInitializer;->e()V

    return-void
.end method
