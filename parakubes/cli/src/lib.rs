use std::path::PathBuf;
use api::K8sClient;
use spawner::*;
use clap::{Parser, Subcommand};

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
pub struct ParakubesCli {
    name: Option<String>,

    #[arg(short, long, value_name = "FILE")]
    config: Option<PathBuf>,

    #[command(subcommand)]
    command: Option<ParakubesCommands>,

    #[clap(flatten)]
    run: RunCmd,
}

#[derive(Subcommand, Debug)]
pub enum ParakubesCommands {
    Simulate {
        #[arg(short, long, value_name = "FILE")]
        config: Option<PathBuf>,
    },

    Stop {
        #[arg(short, long, value_name = "FILE")]
        config: Option<PathBuf>,
    },
    
    Restart {
        #[arg(short, long, value_name = "FILE")]
        config: Option<PathBuf>,
    },
}

impl ParakubesCli {
    pub fn run() {
        let cli = ParakubesCli::parse();
        
    }
}
