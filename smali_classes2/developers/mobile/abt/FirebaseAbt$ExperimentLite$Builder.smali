.class public final Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FirebaseAbt.java"

# interfaces
.implements Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;",
        ">;",
        "Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->a()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Ldevelopers/mobile/abt/FirebaseAbt$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExperimentId()Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->c(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;)V

    return-object p0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-virtual {v0}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setExperimentId(Ljava/lang/String;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->b(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;

    invoke-static {v0, p1}, Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;->d(Ldevelopers/mobile/abt/FirebaseAbt$ExperimentLite;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
